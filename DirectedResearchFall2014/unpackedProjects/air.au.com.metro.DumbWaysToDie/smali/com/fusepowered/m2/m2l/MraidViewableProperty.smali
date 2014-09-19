.class Lcom/fusepowered/m2/m2l/MraidViewableProperty;
.super Lcom/fusepowered/m2/m2l/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mViewable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "viewable"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;-><init>()V

    .line 109
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidViewableProperty;->mViewable:Z

    .line 110
    return-void
.end method

.method public static createWithViewable(Z)Lcom/fusepowered/m2/m2l/MraidViewableProperty;
    .locals 1
    .parameter "viewable"

    .prologue
    .line 113
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidViewableProperty;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/MraidViewableProperty;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "viewable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidViewableProperty;->mViewable:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
