package services

func StringP(s string) *string {
	return &s
}

func PString(s *string) string {
	if s == nil {
		return ""
	}
	return *s
}
