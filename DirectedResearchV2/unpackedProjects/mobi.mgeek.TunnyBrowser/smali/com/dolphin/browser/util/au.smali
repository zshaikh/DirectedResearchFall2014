.class final Lcom/dolphin/browser/util/au;
.super Ljava/lang/Object;
.source "DolphinUIUtil.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dolphin/browser/util/au;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dolphin/browser/util/au;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/util/au;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/util/au;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/util/au;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/util/au;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/util/au;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/util/au;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/at;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/dolphin/browser/util/au;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
