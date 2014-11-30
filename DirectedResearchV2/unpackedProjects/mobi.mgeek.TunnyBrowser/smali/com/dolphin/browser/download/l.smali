.class final Lcom/dolphin/browser/download/l;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Landroid/content/CursorLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/dolphin/browser/download/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dolphin/browser/download/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/download/l;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/download/l;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    .line 696
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/dolphin/browser/download/l;->a:Landroid/content/Context;

    sget-object v2, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    sget-object v3, Lcom/dolphin/browser/download/e;->b:[Ljava/lang/String;

    iget-object v4, p0, Lcom/dolphin/browser/download/l;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/download/l;->c:[Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/download/l;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/dolphin/browser/download/l;->a()Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method
