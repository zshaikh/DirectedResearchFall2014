.class public Lv2/com/playhaven/resources/types/PHResource;
.super Ljava/lang/Object;
.source "PHResource.java"


# instance fields
.field private data:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lv2/com/playhaven/resources/types/PHResource;->data:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResourceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lv2/com/playhaven/resources/types/PHResource;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setDataByte([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lv2/com/playhaven/resources/types/PHResource;->data:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDataStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lv2/com/playhaven/resources/types/PHResource;->data:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lv2/com/playhaven/resources/types/PHResource;->key:Ljava/lang/String;

    .line 45
    return-void
.end method
