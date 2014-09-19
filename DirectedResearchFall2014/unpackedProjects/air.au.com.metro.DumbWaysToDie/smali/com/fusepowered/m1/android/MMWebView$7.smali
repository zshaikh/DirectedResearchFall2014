.class Lcom/fusepowered/m1/android/MMWebView$7;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMWebView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMWebView$7;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$7;->this$0:Lcom/fusepowered/m1/android/MMWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/m1/android/MMWebView;->isSendingSize:Z

    .line 908
    return-void
.end method
