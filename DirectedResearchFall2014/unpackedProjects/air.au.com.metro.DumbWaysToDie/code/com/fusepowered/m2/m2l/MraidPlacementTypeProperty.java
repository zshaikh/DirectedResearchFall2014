package com.fusepowered.m2.m2l;

class MraidPlacementTypeProperty extends MraidProperty
{
    private final MraidView.PlacementType mPlacementType;
    
    MraidPlacementTypeProperty(final MraidView.PlacementType mPlacementType) {
        super();
        this.mPlacementType = mPlacementType;
    }
    
    public static MraidPlacementTypeProperty createWithType(final MraidView.PlacementType placementType) {
        return new MraidPlacementTypeProperty(placementType);
    }
    
    @Override
    public String toJsonPair() {
        return "placementType: '" + this.mPlacementType.toString().toLowerCase() + "'";
    }
}
