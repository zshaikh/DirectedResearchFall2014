.class public Lcom/dolphin/browser/tabbar/j;
.super Ljava/lang/Object;
.source "TabStateCenter.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    sput-boolean v1, Lcom/dolphin/browser/tabbar/j;->a:Z

    .line 7
    sput-boolean v1, Lcom/dolphin/browser/tabbar/j;->b:Z

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/tabbar/j;->c:Z

    .line 9
    sput-boolean v1, Lcom/dolphin/browser/tabbar/j;->d:Z

    return-void
.end method

.method public static final a(Z)V
    .locals 0

    .prologue
    .line 13
    sput-boolean p0, Lcom/dolphin/browser/tabbar/j;->a:Z

    .line 14
    return-void
.end method

.method public static final a()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/dolphin/browser/tabbar/j;->a:Z

    return v0
.end method

.method public static final b(Z)V
    .locals 0

    .prologue
    .line 34
    sput-boolean p0, Lcom/dolphin/browser/tabbar/j;->c:Z

    .line 35
    return-void
.end method

.method public static final b()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/dolphin/browser/tabbar/j;->b:Z

    return v0
.end method

.method public static final c(Z)V
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/dolphin/browser/tabbar/j;->d:Z

    .line 45
    return-void
.end method

.method public static final c()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/dolphin/browser/tabbar/j;->c:Z

    return v0
.end method

.method public static final d()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/dolphin/browser/tabbar/j;->d:Z

    return v0
.end method
