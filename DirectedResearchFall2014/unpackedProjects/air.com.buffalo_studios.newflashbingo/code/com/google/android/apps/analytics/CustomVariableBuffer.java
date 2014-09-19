package com.google.android.apps.analytics;

class CustomVariableBuffer
{
    private CustomVariable[] customVariables;
    
    public CustomVariableBuffer() {
        super();
        this.customVariables = new CustomVariable[50];
    }
    
    private void throwOnInvalidIndex(final int n) {
        if (n < 1 || n > 50) {
            throw new IllegalArgumentException("Index must be between 1 and 50, inclusive.");
        }
    }
    
    public void clearCustomVariableAt(final int n) {
        this.throwOnInvalidIndex(n);
        this.customVariables[n - 1] = null;
    }
    
    public CustomVariable[] getCustomVariableArray() {
        return this.customVariables.clone();
    }
    
    public CustomVariable getCustomVariableAt(final int n) {
        this.throwOnInvalidIndex(n);
        return this.customVariables[n - 1];
    }
    
    public boolean hasCustomVariables() {
        for (int i = 0; i < this.customVariables.length; ++i) {
            if (this.customVariables[i] != null) {
                return true;
            }
        }
        return false;
    }
    
    public boolean isIndexAvailable(final int n) {
        this.throwOnInvalidIndex(n);
        return this.customVariables[n - 1] == null;
    }
    
    public void setCustomVariable(final CustomVariable customVariable) {
        this.throwOnInvalidIndex(customVariable.getIndex());
        this.customVariables[customVariable.getIndex() - 1] = customVariable;
    }
}
