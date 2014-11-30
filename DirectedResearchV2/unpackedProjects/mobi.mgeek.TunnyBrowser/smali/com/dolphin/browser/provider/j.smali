.class final Lcom/dolphin/browser/provider/j;
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
    .line 1161
    iput-object p1, p0, Lcom/dolphin/browser/provider/j;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/provider/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1164
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/provider/j;->a:Landroid/content/ContentResolver;

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/dolphin/browser/provider/j;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/provider/j;->c:Ljava/lang/String;

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/provider/Browser;->a(ZLandroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    return-void
.end method
