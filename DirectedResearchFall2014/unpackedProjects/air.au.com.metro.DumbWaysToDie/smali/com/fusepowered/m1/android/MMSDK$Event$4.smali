.class final Lcom/fusepowered/m1/android/MMSDK$Event$4;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMSDK$Event;->overlayOpened(Lcom/fusepowered/m1/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$4;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$4;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$4;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$4;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMSDK$Event$4;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMAd;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fusepowered/m1/android/RequestListener;->MMAdOverlayLaunched(Lcom/fusepowered/m1/android/MMAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 489
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "Exception raised in your RequestListener: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
