.class public Lcom/google/inject/internal/MoreTypes$MemberImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/Member;


# instance fields
.field private final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final memberType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final synthetic:Z


# direct methods
.method static synthetic access$100(Lcom/google/inject/internal/MoreTypes$MemberImpl;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;->memberType:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSynthetic()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;->synthetic:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
