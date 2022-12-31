package keys

import (
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

func (r *Rsa) ExportJWK() string {
	re, _, _ := jwk.DecodePEM([]byte(r.ExportPublicKey()))
	vres, _ := sonic.Marshal(re)
	return string(vres)
}

func (r *Rsa) Encrypt(data []byte) []byte {
	ciphertext, _ := rsa.EncryptPKCS1v15(rand.Reader, r.PublicKey, data)
	return ciphertext
}

func (r *Rsa) Decrypt(data []byte) []byte {
	plaintext, _ := rsa.DecryptPKCS1v15(rand.Reader, r.PrivateKey, data)
	return plaintext
}

func (r *Rsa) Sign(data []byte) []byte {
	signature, _ := rsa.SignPKCS1v15(rand.Reader, r.PrivateKey, 0, data)
	return signature
}

func (r *Rsa) Verify(data []byte, signature []byte) bool {
	err := rsa.VerifyPKCS1v15(r.PublicKey, 0, data, signature)
	return err == nil
}

func (r *Rsa) EncryptString(data string) string {
	return string(r.Encrypt([]byte(data)))
}

func (r *Rsa) DecryptString(data string) string {
	return string(r.Decrypt([]byte(data)))
}

func (r *Rsa) SignString(data string) string {
	return string(r.Sign([]byte(data)))
}

func (r *Rsa) VerifyString(data string, signature string) bool {
	return r.Verify([]byte(data), []byte(signature))
}
