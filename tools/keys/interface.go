package keys

type CryptoKey interface {
	Generate()
	ExportPrivateKey() string
	ExportPublicKey() string
	Export() (string, string)
	ImportPrivateKey(key string)
	ImportPublicKey(key string)
	Import(public string, private string)
	ExportPublicBase64() string
	ExportPrivateBase64() string
	ExportBase64() (string, string)
	ImportPublicBase64(key string)
	ImportPrivateBase64(key string)
	ImportBase64(public string, private string)
	ExportJWK() (string, error)
	Encrypt(data []byte) ([]byte, error)
	Decrypt(data []byte) ([]byte, error)
	Sign(data []byte) ([]byte, error)
	Verify(data []byte, signature []byte) bool
	EncryptString(data string) (string, error)
	DecryptString(data string) (string, error)
	SignString(data string) (string, error)
	VerifyString(data string, signature string) bool
}
