package com.fusepowered.m2.m2l;

abstract class MraidProperty
{
    private String sanitize(final String s) {
        if (s != null) {
            return s.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", "");
        }
        return "";
    }
    
    public abstract String toJsonPair();
    
    @Override
    public String toString() {
        return this.sanitize(this.toJsonPair());
    }
}
