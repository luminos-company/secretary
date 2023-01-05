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

func PInt(i *int) int {
	if i == nil {
		return 0
	}
	return *i
}

func PInt64(i *int64) int64 {
	if i == nil {
		return 0
	}
	return *i
}

func IntP(i int) *int {
	return &i
}

func Int64P(i int64) *int64 {
	return &i
}
