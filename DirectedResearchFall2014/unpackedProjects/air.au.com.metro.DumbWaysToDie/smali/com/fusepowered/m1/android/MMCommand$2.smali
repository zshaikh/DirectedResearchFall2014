.class Lcom/fusepowered/m1/android/MMCommand$2;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMCommand;

.field final synthetic val$call:Ljava/lang/String;

.field final synthetic val$webViewCallback:Lcom/fusepowered/m1/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMCommand;Lcom/fusepowered/m1/android/MMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMCommand$2;->this$0:Lcom/fusepowered/m1/android/MMCommand;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMCommand$2;->val$webViewCallback:Lcom/fusepowered/m1/android/MMWebView;

    iput-object p3, p0, Lcom/fusepowered/m1/android/MMCommand$2;->val$call:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMCommand$2;->val$webViewCallback:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMCommand$2;->val$call:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    return-void
.end method
