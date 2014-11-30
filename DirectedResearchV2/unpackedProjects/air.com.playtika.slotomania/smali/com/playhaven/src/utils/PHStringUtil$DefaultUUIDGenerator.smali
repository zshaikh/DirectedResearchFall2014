.class Lcom/playhaven/src/utils/PHStringUtil$DefaultUUIDGenerator;
.super Ljava/lang/Object;
.source "PHStringUtil.java"

# interfaces
.implements Lcom/playhaven/src/utils/PHStringUtil$UUIDGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/utils/PHStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUUIDGenerator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/playhaven/src/utils/PHStringUtil$DefaultUUIDGenerator;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/playhaven/src/utils/PHStringUtil$DefaultUUIDGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
