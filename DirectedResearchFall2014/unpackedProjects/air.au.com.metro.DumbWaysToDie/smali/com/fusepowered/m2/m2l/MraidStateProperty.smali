.class Lcom/fusepowered/m2/m2l/MraidStateProperty;
.super Lcom/fusepowered/m2/m2l/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V
    .locals 0
    .parameter "viewState"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidProperty;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidStateProperty;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 93
    return-void
.end method

.method public static createWithViewState(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)Lcom/fusepowered/m2/m2l/MraidStateProperty;
    .locals 1
    .parameter "viewState"

    .prologue
    .line 96
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidStateProperty;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/MraidStateProperty;-><init>(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidStateProperty;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
