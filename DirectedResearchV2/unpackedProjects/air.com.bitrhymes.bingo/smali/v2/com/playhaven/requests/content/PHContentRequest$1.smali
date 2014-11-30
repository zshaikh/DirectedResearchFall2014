.class synthetic Lv2/com/playhaven/requests/content/PHContentRequest$1;
.super Ljava/lang/Object;
.source "PHContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/content/PHContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->values()[Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState:[I

    :try_start_0
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState:[I

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Initialized:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lv2/com/playhaven/requests/content/PHContentRequest$1;->$SwitchMap$v2$com$playhaven$requests$content$PHContentRequest$PHRequestState:[I

    sget-object v1, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->Preloaded:Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;

    invoke-virtual {v1}, Lv2/com/playhaven/requests/content/PHContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
