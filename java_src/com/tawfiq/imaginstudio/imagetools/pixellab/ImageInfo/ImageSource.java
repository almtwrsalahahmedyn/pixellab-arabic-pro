package com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo;

import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;

/* loaded from: classes.dex */
public class ImageSource {
    SourceType sourceType = null;
    String path = null;
    boolean assetFolder = false;

    /* loaded from: classes.dex */
    public enum SourceType {
        local_file,
        assets
    }

    public ImageSource() {
    }

    public ImageSource(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        fromBundle(bundle);
    }

    public ImageSource(String str) {
        setLocalFilePath(str);
    }

    public ImageSource(String str, boolean z) {
        setAssetsPath(str, z);
    }

    private void fromBundle(Bundle bundle) {
        this.assetFolder = bundle.getBoolean(appStateConstants.IMG_SRC_ASSET_FOLDER);
        this.path = bundle.getString(appStateConstants.IMG_SRC_PATH);
        this.sourceType = bundle.getString(appStateConstants.IMG_SRC_SOURCE_TYPE) != null ? SourceType.valueOf(bundle.getString(appStateConstants.IMG_SRC_SOURCE_TYPE)) : null;
    }

    public boolean checkValid() {
        String str;
        return (this.sourceType == null || (str = this.path) == null || str.isEmpty()) ? false : true;
    }

    public boolean compare(ImageSource imageSource) {
        return checkValid() && imageSource.checkValid() && imageSource.sourceType == this.sourceType && commonFuncs.compareStrings(this.path, imageSource.path) && this.assetFolder == imageSource.assetFolder;
    }

    public ImageSource copy() {
        ImageSource imageSource = new ImageSource();
        imageSource.set(this.sourceType, this.path, this.assetFolder);
        return imageSource;
    }

    public String getPath() {
        return this.path;
    }

    public SourceType getSourceType() {
        return this.sourceType;
    }

    public boolean isAssetFolder() {
        return this.assetFolder;
    }

    public void set(SourceType sourceType, String str, boolean z) {
        this.sourceType = sourceType;
        this.path = str;
        this.assetFolder = z;
    }

    public void setAssetsPath(String str, boolean z) {
        this.assetFolder = z;
        this.sourceType = SourceType.assets;
        this.path = str;
    }

    public void setLocalFilePath(String str) {
        this.sourceType = SourceType.local_file;
        this.path = str;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(appStateConstants.IMG_SRC_ASSET_FOLDER, this.assetFolder);
        SourceType sourceType = this.sourceType;
        if (sourceType != null) {
            bundle.putString(appStateConstants.IMG_SRC_SOURCE_TYPE, sourceType.name());
        }
        if (this.path != null) {
            bundle.putString(appStateConstants.IMG_SRC_PATH, getPath());
        }
        return bundle;
    }
}
