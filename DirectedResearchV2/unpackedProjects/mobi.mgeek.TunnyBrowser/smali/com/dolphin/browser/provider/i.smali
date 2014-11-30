.class final Lcom/dolphin/browser/provider/i;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/dolphin/browser/provider/i;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dolphin/browser/provider/i;->c:I

    iput-object p4, p0, Lcom/dolphin/browser/provider/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/provider/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/dolphin/browser/provider/i;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1155
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/provider/i;->a:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dolphin/browser/provider/i;->b:Ljava/lang/String;

    iget v3, p0, Lcom/dolphin/browser/provider/i;->c:I

    iget-object v4, p0, Lcom/dolphin/browser/provider/i;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/provider/i;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/provider/i;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/provider/Browser;->a(ZLandroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void
.end method
