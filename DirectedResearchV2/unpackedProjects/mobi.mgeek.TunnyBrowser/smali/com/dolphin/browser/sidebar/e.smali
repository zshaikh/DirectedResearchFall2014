.class abstract Lcom/dolphin/browser/sidebar/e;
.super Ljava/lang/Object;
.source "AddonBarController.java"


# instance fields
.field final a:Lcom/dolphin/browser/extensions/n;

.field final b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/dolphin/browser/sidebar/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/e;->c:Lcom/dolphin/browser/sidebar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/dolphin/browser/sidebar/e;->b:Ljava/lang/CharSequence;

    .line 126
    iput-object p3, p0, Lcom/dolphin/browser/sidebar/e;->a:Lcom/dolphin/browser/extensions/n;

    .line 127
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/e;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
