.class public interface abstract Ldolphin/net/resource/ResourceHandler;
.super Ljava/lang/Object;
.source "ResourceHandler.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# virtual methods
.method public abstract getSupportedMimeTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleRequestContext(Ldolphin/net/resource/f;)Ldolphin/net/resource/f;
.end method

.method public abstract handleResource(Ljava/lang/String;)Ldolphin/webkit/WebResourceResponse;
.end method

.method public abstract isSupported(Ljava/lang/String;)Z
.end method

.method public abstract resourceType()Ljava/lang/String;
.end method

.method public abstract shouldHandleRequestContext(Ldolphin/net/resource/f;)Z
.end method

.method public abstract shouldHandleResource(Ljava/lang/String;)Z
.end method
