.class public Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;
.super Ljava/lang/Object;
.source "AdViewControllerFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)Lcom/fusepowered/m2/m2l/AdViewController;
    .locals 1
    .parameter "context"
    .parameter "moPubView"

    .prologue
    .line 48
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;->internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)Lcom/fusepowered/m2/m2l/AdViewController;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;)V
    .locals 0
    .parameter "factory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;->instance:Lcom/fusepowered/m2/m2l/factories/AdViewControllerFactory;

    .line 45
    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)Lcom/fusepowered/m2/m2l/AdViewController;
    .locals 1
    .parameter "context"
    .parameter "moPubView"

    .prologue
    .line 52
    new-instance v0, Lcom/fusepowered/m2/m2l/AdViewController;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/m2l/AdViewController;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/MoPubView;)V

    return-object v0
.end method
