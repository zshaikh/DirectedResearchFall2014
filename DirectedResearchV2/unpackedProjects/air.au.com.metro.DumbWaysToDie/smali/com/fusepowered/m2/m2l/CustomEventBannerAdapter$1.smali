.class Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;-><init>(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "MoPub"

    const-string v1, "Third-party network timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->onBannerFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter$1;->this$0:Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/CustomEventBannerAdapter;->invalidate()V

    .line 75
    return-void
.end method
