.class public Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapterFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;
    .locals 1
    .param p0, "moPubView"    # Lcom/fusepowered/m2/m2l/MoPubView;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classData"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;->internalCreate(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    sput-object p0, Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;->instance:Lcom/fusepowered/m2/m2l/factories/CustomEventBannerAdapterFactory;

    .line 44
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;
    .locals 1
    .param p1, "moPubView"    # Lcom/fusepowered/m2/m2l/MoPubView;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classData"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;-><init>(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
