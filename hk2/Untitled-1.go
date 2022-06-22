
import (
	"bytes"
	"encoding/base64"
	"encoding/gob"
)

func EncodeToBytes(input interface{}) ([]byte, error) {
	buf := bytes.Buffer{}
	enc := gob.NewEncoder(&buf)
	err := enc.Encode(input)
	if err != nil {
		return []byte{}, err
	}
	return buf.Bytes(), nil
}

func EncodeToString(b []byte) string {
	if len(b) == 0 {
		return ""
	}
	return base64.URLEncoding.EncodeToString(b)
}