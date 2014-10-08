.class abstract Lcom/fusepowered/m2/m2l/MraidProperty;
.super Ljava/lang/Object;
.source "MraidProperty.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v2, ""

    .line 40
    if-eqz p1, :cond_0

    const-string v0, "[^a-zA-Z0-9_,:\\s\\{\\}\\\'\\\"]"

    const-string v1, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract toJsonPair()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;->toJsonPair()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MraidProperty;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
