.class synthetic Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;
.super Ljava/lang/Object;
.source "MRAIDAsyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDAsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->values()[Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I

    :try_start_0
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_HTML:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_PICTURE:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->INVALID:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
