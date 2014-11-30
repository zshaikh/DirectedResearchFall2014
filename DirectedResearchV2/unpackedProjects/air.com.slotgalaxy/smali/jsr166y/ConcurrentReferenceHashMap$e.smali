.class final Ljsr166y/ConcurrentReferenceHashMap$e;
.super Ljsr166y/ConcurrentReferenceHashMap$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljsr166y/ConcurrentReferenceHashMap",
        "<TK;TV;>.d;",
        "Ljava/util/Enumeration",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 0

    .prologue
    .line 1498
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$e;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0, p1}, Ljsr166y/ConcurrentReferenceHashMap$d;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1502
    invoke-super {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->c()Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1503
    invoke-super {p0}, Ljsr166y/ConcurrentReferenceHashMap$d;->c()Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
