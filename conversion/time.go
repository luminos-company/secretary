package conversion

import (
	"github.com/luminos-company/secretary/generated/types"
	"google.golang.org/protobuf/types/known/timestamppb"
	"time"
)

func ConvertTimeToTimestamp(t time.Time) *timestamppb.Timestamp {
	return timestamppb.New(t)
}

func ConvertPTimestampToTime(t *timestamppb.Timestamp) time.Time {
	if t == nil {
		return time.Time{}
	}
	return t.AsTime()
}

func ConvertPTypesIdToString(id *types.ID) *string {
	if id == nil {
		return nil
	}
	return &id.Id
}

func ConvertStringToPTypesId(id *string) *types.ID {
	if id == nil {
		return nil
	}
	return &types.ID{Id: ""}
}

func ConvertStringToTypesId(id string) *types.ID {
	if id == "" {
		return nil
	}
	return &types.ID{Id: ""}
}

func ConvertTypesIdToString(id *types.ID) string {
	if id.Id == "" {
		return ""
	}
	return id.Id
}
