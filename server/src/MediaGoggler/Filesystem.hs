{-# LANGUAGE QuasiQuotes #-}

module MediaGoggler.Filesystem where

import Path (Path, Abs, Rel, Dir, File, absdir, (</>))
import Path.IO (walkDirAccum)

--import MediaGoggler.Database (MonadDB, fileExistsInDb)

root :: Path Abs Dir
root = [absdir|/media|]

prefixPath :: Path Rel a -> Path Abs a
prefixPath = (</>) root

--getNewFiles :: (MonadDB m, MonadIO m) => m [Path Abs File]
--getNewFiles = walkDirAccum Nothing writer root
--    where writer _ _ files = mapM checkFile files >>= pure . concat
--          checkFile path = fileExistsInDb path >>= \case
--              True -> pure mempty
--              False -> pure [path]
