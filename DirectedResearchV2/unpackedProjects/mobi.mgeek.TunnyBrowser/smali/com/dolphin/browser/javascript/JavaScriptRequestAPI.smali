.class public interface abstract annotation Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
.super Ljava/lang/Object;
.source "JavaScriptRequestAPI.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        c = "callback"
        d = "ctx"
        e = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()[Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()I
.end method
