.class public abstract Lcom/facebook/orca/users/UserIdentifier;
.super Ljava/lang/Object;
.source "UserIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/users/UserIdentifier;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/users/UserIdentifier;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
