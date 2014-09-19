package com.buffalostudios.aneutils.bitmaputil;

import com.adobe.fre.*;
import com.buffalostudios.aneutils.common.*;
import java.nio.*;

public class BitmapUtil
{
    public static class Compress implements FREFunction
    {
        private native int compress(final int p0, final int p1, final ByteBuffer p2, final ByteBuffer p3);
        
        private int getMaxCompressedSize(final int n, final int n2) {
            return 2 * (8 + 4 * (n * n2));
        }
        
        private native int intFromARM(final int p0);
        
        private native String stringFromJNI();
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final FREBitmapData freBitmapData = (FREBitmapData)array[0];
            final int freBitmapDataWidth = ANEHelper.getFREBitmapDataWidth(freBitmapData);
            final int freBitmapDataHeight = ANEHelper.getFREBitmapDataHeight(freBitmapData);
            final ByteBuffer freBitmapDataPixels = ANEHelper.getFREBitmapDataPixels(freBitmapData, true);
            final ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.getMaxCompressedSize(freBitmapDataWidth, freBitmapDataHeight));
            final int compress = this.compress(freBitmapDataWidth, freBitmapDataHeight, freBitmapDataPixels, allocateDirect);
            if (compress == -1) {
                return null;
            }
            allocateDirect.position(0);
            if (compress < allocateDirect.capacity()) {
                allocateDirect.limit(compress);
            }
            return ANEHelper.newFREByteArray(allocateDirect, "littleEndian");
        }
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return null;
        }
    }
    
    public static class Uncompress implements FREFunction
    {
        private int getUncompressedSize(final int n, final int n2) {
            return 4 * (n * n2);
        }
        
        private native int uncompress(final ByteBuffer p0, final int[] p1, final int[] p2, final ByteBuffer p3);
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final ByteBuffer byteBuffer = ANEArgument.asByteBuffer(array[0], true);
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            final int int1 = byteBuffer.getInt(0);
            final int int2 = byteBuffer.getInt(4);
            final ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.getUncompressedSize(int1, int2));
            final int uncompress = this.uncompress(byteBuffer, new int[1], new int[1], allocateDirect);
            if (uncompress == -1) {
                return null;
            }
            allocateDirect.position(0);
            if (uncompress < allocateDirect.capacity()) {
                allocateDirect.limit(uncompress);
            }
            return ANEHelper.newFREBitmapData(int1, int2, true, allocateDirect);
        }
    }
}
