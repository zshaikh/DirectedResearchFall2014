.class Lcom/fusepowered/m2/m2l/MraidAbstractController;
.super Ljava/lang/Object;
.source "MraidAbstractController.java"


# instance fields
.field private final mMraidView:Lcom/fusepowered/m2/m2l/MraidView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidAbstractController;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 42
    return-void
.end method


# virtual methods
.method public getMraidView()Lcom/fusepowered/m2/m2l/MraidView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidAbstractController;->mMraidView:Lcom/fusepowered/m2/m2l/MraidView;

    return-object v0
.end method
