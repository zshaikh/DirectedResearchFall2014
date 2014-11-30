.class public Lcom/playhaven/src/common/PHError;
.super Ljava/lang/Object;
.source "PHError.java"


# instance fields
.field protected errorCode:I

.field protected message:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 23
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/playhaven/src/common/PHError;-><init>(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/playhaven/src/common/PHError;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/playhaven/src/common/PHError;->message:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/playhaven/src/common/PHError;->errorCode:I

    .line 16
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/playhaven/src/common/PHError;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/playhaven/src/common/PHError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    const-string v0, "PHError with message \'%s\' and error code %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/playhaven/src/common/PHError;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/playhaven/src/common/PHError;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
