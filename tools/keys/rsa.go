package keys

import (
	"crypto"
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"encoding/base64"
	"encoding/pem"
	"github.com/bytedance/sonic"
	"github.com/lestrrat-go/jwx/v2/jwk"
)

type Rsa struct {
	PrivateKey *rsa.PrivateKey
	PublicKey  *rsa.PublicKey
}

func (r *Rsa) Generate() {
	privkey, _ := rsa.GenerateKey(rand.Reader, 4096)
	r.PrivateKey = privkey
	r.PublicKey = &privkey.PublicKey
}

func (r *Rsa) ExportPrivateKey() string {
	return string(pem.EncodeToMemory(
		&pem.Block{
			Type:  "RSA PRIVATE KEY",
			Bytes: x509.MarshalPKCS1PrivateKey(r.PrivateKey),
		},
	))
}

func (r *Rsa) ExportPublicKey() string {
	return string(pem.EncodeToMemory(
		&pem.Block{
			Type:  "RSA PUBLIC KEY",
			Bytes: x509.MarshalPKCS1PublicKey(r.PublicKey),
		},
	))
}

func (r *Rsa) Export() (string, string) {
	return r.ExportPrivateKey(), r.ExportPublicKey()
}

func (r *Rsa) ImportPrivateKey(key string) {
	block, _ := pem.Decode([]byte(key))
	r.PrivateKey, _ = x509.ParsePKCS1PrivateKey(block.Bytes)
}

func (r *Rsa) ImportPublicKey(key string) {
	block, _ := pem.Decode([]byte(key))
	r.PublicKey, _ = x509.ParsePKCS1PublicKey(block.Bytes)
}

func (r *Rsa) Import(public string, private string) {
	r.ImportPrivateKey(private)
	r.ImportPublicKey(public)
}

func (r *Rsa) ExportPublicBase64() string {
	return base64.StdEncoding.EncodeToString([]byte(r.ExportPublicKey()))
}

func (r *Rsa) ExportPrivateBase64() string {
	return base64.StdEncoding.EncodeToString([]byte(r.ExportPrivateKey()))
}

func (r *Rsa) ImportPublicBase64(key string) {
	decoded, _ := base64.StdEncoding.DecodeString(key)
	r.ImportPublicKey(string(decoded))
}

func (r *Rsa) ImportPrivateBase64(key string) {
	decoded, _ := base64.StdEncoding.DecodeString(key)
	r.ImportPrivateKey(string(decoded))
}

func (r *Rsa) ImportBase64(public string, private string) {
	r.ImportPublicBase64(public)
	r.ImportPrivateBase64(private)
}

func (r *Rsa) ExportBase64() (string, string) {
	return r.ExportPublicBase64(), r.ExportPrivateBase64()
}

func (r *Rsa) ExportJWK() (string, error) {
	re, _, err := jwk.DecodePEM([]byte(r.ExportPublicKey()))
	if err != nil {
		return "", err
	}
	vres, err := sonic.Marshal(re)
	return string(vres), err
}

func (r *Rsa) Encrypt(data []byte) ([]byte, error) {
	chunkSize := r.PrivateKey.Size() - (2 * crypto.SHA256.Size()) - 2
	var chunks [][]byte
	for i := 0; i < len(data); i += chunkSize {
		end := i + chunkSize
		if end > len(data) {
			end = len(data)
		}
		chunks = append(chunks, data[i:end])

	}

	var encrypted []byte
	for _, chunk := range chunks {
		encrypt, err := rsa.EncryptPKCS1v15(rand.Reader, r.PublicKey, chunk)
		if err != nil {
			return nil, err
		}
		encrypted = append(encrypted, encrypt...)

	}
	return encrypted, nil
}

func (r *Rsa) Decrypt(data []byte) ([]byte, error) {
	chunkSize := r.PrivateKey.Size()
	var chunks [][]byte
	for i := 0; i < len(data); i += chunkSize {
		end := i + chunkSize
		if end > len(data) {
			end = len(data)
		}
		chunks = append(chunks, data[i:end])
	}

	var decrypted []byte
	for _, chunk := range chunks {
		decrypt, err := rsa.DecryptPKCS1v15(rand.Reader, r.PrivateKey, chunk)
		if err != nil {
			return nil, err
		}
		decrypted = append(decrypted, decrypt...)
	}

	return decrypted, nil
}

func (r *Rsa) Sign(data []byte) ([]byte, error) {
	chunkSize := r.PrivateKey.Size() - (2 * crypto.SHA256.Size()) - 2
	var chunks [][]byte
	for i := 0; i < len(data); i += chunkSize {
		end := i + chunkSize
		if end > len(data) {
			end = len(data)
		}
		chunks = append(chunks, data[i:end])
	}

	var signature []byte
	for _, chunk := range chunks {
		sign, err := rsa.SignPKCS1v15(rand.Reader, r.PrivateKey, crypto.SHA256, chunk)
		if err != nil {
			return nil, err
		}
		signature = append(signature, sign...)
	}

	return signature, nil
}

func (r *Rsa) Verify(data []byte, signature []byte) bool {
	chunkSize := r.PrivateKey.Size()
	var chunks [][]byte
	for i := 0; i < len(data); i += chunkSize {
		end := i + chunkSize
		if end > len(data) {
			end = len(data)
		}
		chunks = append(chunks, data[i:end])
	}

	for _, chunk := range chunks {
		err := rsa.VerifyPKCS1v15(r.PublicKey, crypto.SHA256, chunk, signature)
		if err != nil {
			return false
		}
	}

	return true
}

func (r *Rsa) EncryptString(data string) (string, error) {
	encrypt, err := r.Encrypt([]byte(data))
	return base64.StdEncoding.EncodeToString(encrypt), err
}

func (r *Rsa) DecryptString(data string) (string, error) {
	decrypt, err := base64.StdEncoding.DecodeString(data)
	if err != nil {
		return "", err
	}
	decrypt, err = r.Decrypt(decrypt)
	return string(decrypt), err
}

func (r *Rsa) SignString(data string) (string, error) {
	sign, err := r.Sign([]byte(data))
	return base64.StdEncoding.EncodeToString(sign), err
}

func (r *Rsa) VerifyString(data string, signature string) bool {
	sign, err := base64.StdEncoding.DecodeString(signature)
	if err != nil {
		return false
	}
	return r.Verify([]byte(data), sign)
}
