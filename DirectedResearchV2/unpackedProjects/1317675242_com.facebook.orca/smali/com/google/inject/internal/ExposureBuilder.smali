.class public Lcom/google/inject/internal/ExposureBuilder;
.super Ljava/lang/Object;
.source "ExposureBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedElementBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/binder/AnnotatedElementBuilder;"
    }
.end annotation


# instance fields
.field private final binder:Lcom/google/inject/Binder;

.field private key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/inject/internal/ExposureBuilder;->binder:Lcom/google/inject/Binder;

    .line 34
    iput-object p2, p0, Lcom/google/inject/internal/ExposureBuilder;->source:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lcom/google/inject/internal/ExposureBuilder;->key:Lcom/google/inject/Key;

    .line 36
    return-void
.end method


# virtual methods
.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/inject/internal/ExposureBuilder;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/inject/internal/ExposureBuilder;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "AnnotatedElementBuilder"

    return-object v0
.end method
