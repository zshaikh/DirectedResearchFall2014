.class Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;
.super Lcom/fusepowered/m2/m2l/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mScreenHeight:I

.field private final mScreenWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;-><init>()V

    .line 74
    iput p1, p0, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->mScreenWidth:I

    .line 75
    iput p2, p0, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->mScreenHeight:I

    .line 76
    return-void
.end method

.method public static createWithSize(II)Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 79
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenSize: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
