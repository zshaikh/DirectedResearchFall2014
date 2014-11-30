.class public interface abstract Lcom/b/a/h;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final a:Lcom/b/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0}, Lcom/b/a/i;-><init>()V

    sput-object v0, Lcom/b/a/h;->a:Lcom/b/a/h;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract b()I
.end method

.method public abstract c()V
.end method
