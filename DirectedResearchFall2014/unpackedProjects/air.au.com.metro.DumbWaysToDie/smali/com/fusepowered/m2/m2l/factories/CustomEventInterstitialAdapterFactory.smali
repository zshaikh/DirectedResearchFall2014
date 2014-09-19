.class public Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapterFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    .locals 1
    .parameter "moPubInterstitial"
    .parameter "className"
    .parameter "classData"

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;->internalCreate(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;)V
    .locals 0
    .parameter "factory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventInterstitialAdapterFactory;

    .line 44
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;
    .locals 1
    .parameter "moPubInterstitial"
    .parameter "className"
    .parameter "classData"

    .prologue
    .line 51
    new-instance v0, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/CustomEventInterstitialAdapter;-><init>(Lcom/fusepowered/m2/m2l/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
