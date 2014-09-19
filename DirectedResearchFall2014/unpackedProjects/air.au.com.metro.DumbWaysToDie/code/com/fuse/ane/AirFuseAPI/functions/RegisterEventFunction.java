package com.fuse.ane.AirFuseAPI.functions;

import com.fusepowered.fuseapi.*;
import java.util.*;
import com.fuse.ane.AirFuseAPI.*;
import com.adobe.fre.*;

public class RegisterEventFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
    Label_0212_Outer:
        while (true) {
            while (true) {
                int n2 = 0;
            Label_0498:
                while (true) {
                    String asString2;
                    try {
                        final String asString = array[0].getAsString();
                        if (array.length == 1) {
                            FuseAPI.registerEvent(asString, null, null, null, null);
                            return null;
                        }
                        final HashMap<String, String> hashMap = new HashMap<String, String>();
                        if (array[1].getClass().equals(FREArray.class) && array[2].getClass().equals(FREArray.class)) {
                            final FREArray freArray = (FREArray)array[1];
                            final FREArray freArray2 = (FREArray)array[2];
                            freArray.getObjectAt(0L).getAsString();
                            asString2 = freArray2.getObjectAt(0L).getAsString();
                            for (int n = 0; n < freArray.getLength(); ++n) {
                                hashMap.put(freArray.getObjectAt(n).getAsString(), freArray2.getObjectAt(n).getAsString());
                            }
                        }
                        else {
                            final String asString3 = array[1].getAsString();
                            final String asString4 = array[2].getAsString();
                            hashMap.put(asString3, asString4);
                            if (array.length <= 3) {
                                goto Label_0466;
                            }
                            final HashMap<String, Double> hashMap2 = new HashMap<String, Double>();
                            if (!array[3].getClass().equals(FREArray.class) || !array[4].getClass().equals(FREArray.class)) {
                                goto Label_0362;
                            }
                            final FREArray freArray3 = (FREArray)array[3];
                            final FREArray freArray4 = (FREArray)array[4];
                            n2 = 0;
                            if (n2 >= freArray3.getLength()) {
                                goto Label_0404;
                            }
                            final int int1 = Integer.parseInt(freArray4.getObjectAt(n2).getAsString());
                            final double double1 = Double.parseDouble(freArray4.getObjectAt(n2).getAsString());
                            if (int1 < double1) {
                                hashMap2.put(freArray3.getObjectAt(n2).getAsString(), double1);
                                break Label_0498;
                            }
                            hashMap2.put(freArray3.getObjectAt(n2).getAsString(), (Double)int1);
                            break Label_0498;
                        }
                    }
                    catch (IllegalStateException ex) {
                        AirFuseAPIExtension.log("ERROR Illegal State");
                        ex.printStackTrace();
                        return null;
                    }
                    catch (FRETypeMismatchException ex2) {
                        AirFuseAPIExtension.log("ERROR ERROR ERROR Got a type wrong!");
                        ex2.printStackTrace();
                        return null;
                    }
                    catch (FREInvalidObjectException ex3) {
                        AirFuseAPIExtension.log("ERROR Invalid Object");
                        ex3.printStackTrace();
                        return null;
                    }
                    catch (FREWrongThreadException ex4) {
                        AirFuseAPIExtension.log("ERROR Wrong Thread");
                        ex4.printStackTrace();
                        return null;
                    }
                    final String asString4 = asString2;
                    continue Label_0212_Outer;
                }
                ++n2;
                continue;
            }
        }
    }
}
