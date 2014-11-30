.class public Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/content/ResourceIdentifierResolver;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/Resources;

.field private final c:Ljsr166y/ConcurrentReferenceHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljsr166y/ConcurrentReferenceHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap;

    sget-object v1, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    sget-object v2, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->STRONG:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    invoke-direct {v0, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap;-><init>(Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;)V

    iput-object v0, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->c:Ljsr166y/ConcurrentReferenceHashMap;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->b:Landroid/content/res/Resources;

    .line 16
    return-void
.end method


# virtual methods
.method public resolveAnim(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 31
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resolveDimen(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 39
    const-string v0, "dimen"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resolveDrawable(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 35
    const-string v0, "drawable"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resolveId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 19
    const-string v0, "id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resolveLayout(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 27
    const-string v0, "layout"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    iget-object v1, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->c:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->c:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v2, v1, v0}, Ljsr166y/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public resolveString(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 23
    const-string v0, "string"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pocketchange/android/content/DynamicResourceIdentifierResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
