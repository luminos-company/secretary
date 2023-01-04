package typ

import (
	"os"
	"time"
)

func GetEnv(key, fallback string) string {
	if value, ok := os.LookupEnv(key); ok {
		return value
	}
	return fallback
}

func StringP(s string) *string {
	return &s
}

func PString(s *string) string {
	if s == nil {
		return ""
	}
	return *s
}

func TimeP(t time.Time) *time.Time {
	return &t
}

func PTime(t *time.Time) time.Time {
	if t == nil {
		return time.Time{}
	}
	return *t
}
