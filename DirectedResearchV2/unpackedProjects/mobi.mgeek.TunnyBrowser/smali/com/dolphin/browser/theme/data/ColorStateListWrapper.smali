.class public Lcom/dolphin/browser/theme/data/ColorStateListWrapper;
.super Landroid/content/res/ColorStateList;
.source "ColorStateListWrapper.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    :try_start_0
    const-string v0, "android.content.res.ColorStateList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    const-string v1, "mStateSpecs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    sput-object v1, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->a:Ljava/lang/reflect/Field;

    .line 38
    const-string v1, "mColors"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    sput-object v0, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->b:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    throw v0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    sput-object v3, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->a:Ljava/lang/reflect/Field;

    .line 45
    sput-object v3, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->b:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public constructor <init>([[I[I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 73
    return-void
.end method

.method public static final a(Landroid/content/res/ColorStateList;Lcom/dolphin/browser/theme/c/f;)Lcom/dolphin/browser/theme/data/ColorStateListWrapper;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 50
    if-nez p0, :cond_0

    move-object v0, v2

    .line 68
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    check-cast v0, [[I

    .line 58
    sget-object v1, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 59
    array-length v3, v1

    new-array v3, v3, [I

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-interface {p1, v3}, Lcom/dolphin/browser/theme/c/f;->a([I)V

    .line 62
    new-instance v1, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;

    invoke-direct {v1, v0, v3}, Lcom/dolphin/browser/theme/data/ColorStateListWrapper;-><init>([[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    :goto_1
    move-object v0, v2

    .line 68
    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method
