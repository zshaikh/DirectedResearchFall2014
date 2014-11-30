.class synthetic Lcom/somo/apptimiser/SomoNetworkAgent$1;
.super Ljava/lang/Object;
.source "SomoNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$somo$apptimiser$SomoEvent$EventFields:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/somo/apptimiser/SomoEvent$EventFields;->values()[Lcom/somo/apptimiser/SomoEvent$EventFields;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/somo/apptimiser/SomoNetworkAgent$1;->$SwitchMap$com$somo$apptimiser$SomoEvent$EventFields:[I

    :try_start_0
    sget-object v0, Lcom/somo/apptimiser/SomoNetworkAgent$1;->$SwitchMap$com$somo$apptimiser$SomoEvent$EventFields:[I

    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
