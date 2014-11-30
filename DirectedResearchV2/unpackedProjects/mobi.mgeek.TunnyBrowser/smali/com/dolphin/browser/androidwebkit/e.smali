.class Lcom/dolphin/browser/androidwebkit/e;
.super Ljava/lang/Object;
.source "MyWebSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/d;Z)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/e;->b:Lcom/dolphin/browser/androidwebkit/d;

    iput-boolean p2, p0, Lcom/dolphin/browser/androidwebkit/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/e;->b:Lcom/dolphin/browser/androidwebkit/d;

    iget-object v0, v0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    iget-boolean v1, p0, Lcom/dolphin/browser/androidwebkit/e;->a:Z

    invoke-static {v0, v1}, Lcom/dolphin/browser/androidwebkit/d;->a(Landroid/webkit/WebSettings;Z)V

    .line 287
    return-void
.end method
