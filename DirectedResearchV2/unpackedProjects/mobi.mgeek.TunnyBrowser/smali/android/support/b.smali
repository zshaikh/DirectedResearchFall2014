.class public abstract Landroid/support/b;
.super Ljava/lang/Object;
.source "ClipboardManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Landroid/support/e;

    invoke-direct {v0, p0, v2}, Landroid/support/e;-><init>(Landroid/content/Context;Landroid/support/c;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/d;

    invoke-direct {v0, p0, v2}, Landroid/support/d;-><init>(Landroid/content/Context;Landroid/support/c;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/CharSequence;
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract b()Z
.end method
