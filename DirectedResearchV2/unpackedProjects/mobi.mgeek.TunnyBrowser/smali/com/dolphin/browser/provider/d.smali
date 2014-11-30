.class final Lcom/dolphin/browser/provider/d;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/dolphin/browser/provider/d;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/provider/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/dolphin/browser/provider/d;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dolphin/browser/provider/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/provider/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return-void
.end method
