.class final Lcom/dolphin/browser/provider/k;
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
    .line 1207
    iput-object p1, p0, Lcom/dolphin/browser/provider/k;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/provider/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/dolphin/browser/provider/k;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dolphin/browser/provider/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/provider/k;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method
