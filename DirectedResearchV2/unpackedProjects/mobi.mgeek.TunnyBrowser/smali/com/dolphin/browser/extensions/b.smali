.class Lcom/dolphin/browser/extensions/b;
.super Landroid/content/ContextWrapper;
.source "Addon.java"


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object p2, p0, Lcom/dolphin/browser/extensions/b;->a:Ljava/lang/ClassLoader;

    .line 136
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/extensions/b;->a:Ljava/lang/ClassLoader;

    return-object v0
.end method
