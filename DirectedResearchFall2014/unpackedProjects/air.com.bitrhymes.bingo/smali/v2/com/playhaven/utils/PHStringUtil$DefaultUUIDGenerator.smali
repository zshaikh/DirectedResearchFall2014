.class Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;
.super Ljava/lang/Object;
.source "PHStringUtil.java"

# interfaces
.implements Lv2/com/playhaven/utils/PHStringUtil$UUIDGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/utils/PHStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUUIDGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lv2/com/playhaven/utils/PHStringUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lv2/com/playhaven/utils/PHStringUtil$DefaultUUIDGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
