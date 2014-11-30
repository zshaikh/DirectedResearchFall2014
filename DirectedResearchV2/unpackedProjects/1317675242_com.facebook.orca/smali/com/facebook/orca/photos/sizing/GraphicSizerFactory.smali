.class public Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;
.super Ljava/lang/Object;
.source "GraphicSizerFactory.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory$1;-><init>(Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)V

    return-object v0
.end method
