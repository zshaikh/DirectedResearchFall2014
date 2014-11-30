.class Lcom/pocketchange/android/webkit/OptimizedWebView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/OptimizedWebView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/webkit/OptimizedWebView;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$3;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$3;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->c(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    .line 115
    return-void
.end method
