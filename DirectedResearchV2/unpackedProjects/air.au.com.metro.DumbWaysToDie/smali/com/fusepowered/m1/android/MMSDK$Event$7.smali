.class final Lcom/fusepowered/m1/android/MMSDK$Event$7;
.super Ljava/lang/Object;
.source "MMSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

.field final synthetic val$error:Lcom/fusepowered/m1/android/MMException;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$error:Lcom/fusepowered/m1/android/MMException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 590
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    iget-object v2, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdImpl;->getCallingAd()Lcom/fusepowered/m1/android/MMAd;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMSDK$Event$7;->val$error:Lcom/fusepowered/m1/android/MMException;

    invoke-interface {v1, v2, v3}, Lcom/fusepowered/m1/android/RequestListener;->requestFailed(Lcom/fusepowered/m1/android/MMAd;Lcom/fusepowered/m1/android/MMException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 597
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Exception raised in your RequestListener: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
