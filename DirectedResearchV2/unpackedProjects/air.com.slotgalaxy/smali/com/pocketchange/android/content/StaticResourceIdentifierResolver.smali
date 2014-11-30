.class public Lcom/pocketchange/android/content/StaticResourceIdentifierResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/content/ResourceIdentifierResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public resolveAnim(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 22
    return p2
.end method

.method public resolveDimen(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 30
    return p2
.end method

.method public resolveDrawable(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 26
    return p2
.end method

.method public resolveId(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 10
    return p2
.end method

.method public resolveLayout(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 18
    return p2
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 34
    return p3
.end method

.method public resolveString(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 14
    return p2
.end method
