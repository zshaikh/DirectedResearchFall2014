.class Lcom/pocketchange/android/webkit/OptimizedWebView$4;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/OptimizedWebView;->b()V
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
    .line 137
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$4;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$4;->a:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->a()V

    .line 140
    return-void
.end method
