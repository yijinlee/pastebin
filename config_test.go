package main

import (
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
)

func TestZeroConfig(t *testing.T) {
	assert := assert.New(t)

	cfg := Config{}
	assert.Equal(cfg.expiry, 0*time.Second)
}

func TestConfig(t *testing.T) {
	assert := assert.New(t)

	cfg := Config{expiry: 30 * time.Minute}
	assert.Equal(cfg.expiry, 30*time.Minute)
}
