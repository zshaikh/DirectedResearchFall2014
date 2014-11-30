.class public Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;
.super Landroid/telephony/PhoneStateListener;
.source "SignalStrengthGSMListener.java"


# instance fields
.field private final freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

.field private final phoneType:I


# direct methods
.method public constructor <init>(Lcom/gamesys/android/common/tools/fwk/AbstractContext;I)V
    .locals 0
    .param p1, "context"    # Lcom/gamesys/android/common/tools/fwk/AbstractContext;
    .param p2, "phoneType"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 32
    iput p2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->phoneType:I

    .line 33
    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 37
    iget v2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->phoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    invoke-static {v2}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getDbmToZeroFour(I)I

    move-result v0

    .line 39
    .local v0, "zeroFourLevel":I
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_GSM"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "zeroFourLevel":I
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget v2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->phoneType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 43
    .local v1, "zeroFourValue":I
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_GSM"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
