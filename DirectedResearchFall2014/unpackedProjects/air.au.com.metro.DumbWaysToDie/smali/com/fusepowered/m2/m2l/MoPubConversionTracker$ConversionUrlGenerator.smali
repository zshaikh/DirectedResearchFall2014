.class Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;
.super Lcom/fusepowered/m2/m2l/BaseUrlGenerator;
.source "MoPubConversionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/MoPubConversionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionUrlGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;-><init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)V

    return-void
.end method

.method private setPackageId(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 91
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "serverHostname"

    .prologue
    .line 81
    const-string v0, "/m/open"

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "6"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    #getter for: Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->access$0(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->setPackageId(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    #getter for: Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->access$1(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->setUdid(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->this$0:Lcom/fusepowered/m2/m2l/MoPubConversionTracker;

    #getter for: Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->access$1(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
